#include "bintools.h"

#if defined(_MSC_VER) && true
#define EXTERNAL_
#endif

#ifdef _MSC_VER
#if 0
#include <windows.h>
#include <stdio.h>
#include <strsafe.h>

#include <string>

class IOChildProcess {
	SECURITY_ATTRIBUTES saAttr;

	HANDLE child_StdIn_Rd = NULL;
	HANDLE child_StdIn_Wr = NULL;
	HANDLE child_StdOut_Rd = NULL;
	HANDLE child_StdOut_Wr = NULL;

	PROCESS_INFORMATION pi;
	STARTUPINFO si;

	std::string childName;

	std::string errmsg;

	IOChildProcess() {
		
	}

	bool init() {
		saAttr.nLength = sizeof(saAttr);
		saAttr.bInheritHandle = TRUE;
		saAttr.lpSecurityDescriptor = NULL;

		// child stdout
		if (!CreatePipe(&child_StdOut_Rd, &child_StdOut_Wr, &saAttr, 0)) {
			errmsg = "could not create stdout pipe for child";
			return 0;
		}
		if (!SetHandleInformation(child_StdOut_Rd, HANDLE_FLAG_INHERIT, 0)) {
			errmsg = "could not SetHandleInformation for child stdout read to HANDLE_FLAG_INHERIT";
			return 0;
		}
		
		// child stdin
		if (!CreatePipe(&child_StdIn_Rd, &child_StdIn_Wr, &saAttr, 0)) {
			errmsg = "could not create stdin pipe for child";
			return 0;
		}
		if (!SetHandleInformation(child_StdIn_Wr, HANDLE_FLAG_INHERIT, 0)) {
			errmsg = "could not SetHandleInformation for child stdin read to HANDLE_FLAG_INHERIT";
			return 0;
		}

		if (!createChildProcess())
			return 0;


	}

	bool createChildProcess() {
		bool success = false;

		ZeroMemory(&pi, sizeof(PROCESS_INFORMATION));

		ZeroMemory(&si, sizeof(STARTUPINFO));
		si.cb = sizeof(STARTUPINFO);
		si.hStdError = child_StdOut_Wr;
		si.hStdOutput = child_StdOut_Wr;
		si.hStdInput = child_StdIn_Rd;
		si.dwFlags |= STARTF_USESTDHANDLES;

		success = CreateProcess(NULL, (LPSTR)childName.c_str(), 0, 0, true, 0, 0, 0, &si,&pi);
		if (!success) {
			errmsg = "could not create child process";
			return false;
		}
		
		return true;
	}

	void exit(bool terminate = true) {
		if (terminate) {
			//PostThreadMessage()
			TerminateThread(pi.hThread,0);
			TerminateProcess(pi.hProcess, 0);
		}

		CloseHandle(pi.hProcess);
		CloseHandle(pi.hThread);

		CloseHandle(child_StdOut_Wr);
		CloseHandle(child_StdIn_Rd);
	}

	bool sendToStdIn(const std::string& str) {
		DWORD dwWritten;
		bool success = false;

		WriteFile(child_StdIn_Wr, str.c_str(), str.size(), &dwWritten, NULL);

		if (!CloseHandle(child_StdIn_Wr)) {
			errmsg = "could not write to stdin";
			return false;
		}
		return true;
	}

	std::string getStdOut() {
		std::string out = "";
		constexpr size_t bufsize = 4096;
		char buf[bufsize];
		bool success = false;
		DWORD readAmt;
		while (true) {
			success = ReadFile(child_StdOut_Rd, buf, bufsize, &readAmt, NULL);
			if (!success || readAmt == 0) break;
			out += std::string(buf, readAmt);
		}
		return out;
	}
};
#endif

#include <stdexcept>


#endif

bool BinTools::canDemangle() {
#ifdef EXTERNAL_
	return true;
#else
	return false;
#endif
}

#ifdef EXTERNAL_

#include <cstdio>
#include <iostream>
#include <array>
#include <memory>
#include "../backends/LogBackend.h"

#ifdef _MSC_VER
#define popen _popen
#define pclose _pclose
#endif

const char* binutilsDir = "resources/binutils/";

static std::string exec(const char* cmd) {
	std::string out = "";

	std::array<char, 4096> buffer;
	ABB::LogBackend::logf(ABB::LogBackend::LogLevel_DebugOutput, "executing command \"%s\"", cmd);
	std::unique_ptr<std::FILE, decltype(&pclose)> pipe(popen(cmd, "r"), pclose);
	if (!pipe)
		throw std::runtime_error("popen() failed");

	while (std::fgets(buffer.data(), (int)buffer.size(), pipe.get()) != nullptr)
		out += buffer.data();

	return out;
}
#endif

#ifdef _WIN32
#include <windows.h>
#endif

const char* get_cwd_(){
#ifdef _MSC_VER_
	return GetWorkingDirectory();
#else
	return ".";
#endif
}

std::vector<std::string> BinTools::demangleList(const char** strs, size_t num) {
#ifdef EXTERNAL_
	std::string list = "";
	std::string placeHolder = "0______";
	for (size_t i = 0; i < num; i++) {
		list += " ";
		if (strlen(strs[i]) > 0)
			list += strs[i];
		else
			list += placeHolder;
	}

	std::string progPath = std::string("\"") + get_cwd_() + "/" + std::string(binutilsDir) + "avr-c++filt.exe\"";

#ifdef _WIN32
	for(size_t i = 0; i<progPath.size(); i++)
		if(progPath[i] == '/')
			progPath[i] = '\\';
#endif

	std::string cmd = progPath + list;

	std::cout << cmd << std::endl;
	std::string ret = exec(cmd.c_str());
	std::cout << ret << std::endl;

	std::vector<std::string> out;
	size_t lastI = 0;
	for (size_t i = 0; i < ret.size(); i++) {
		if (ret[i] == '\n') {
			std::string line = std::string(ret.c_str() + lastI, ret.c_str() + i);
			if (line == placeHolder) 
				out.push_back("");
			else
				out.push_back(line);
			
			lastI = i + 1; // add 1 to skip current \n
		}
	}
	if (lastI < ret.size() - 1)
		out.push_back(std::string(ret.c_str()+lastI, ret.c_str()+ret.size()));

	return out;
#else

#endif
}


std::string BinTools::generateSrcMix(const uint8_t* elfData, size_t elfDataLen) {
	return "";
}