#ifndef __RINGBUFFER_H__
#define __RINGBUFFER_H__

#include <vector>

template<typename T>
class RingBuffer{
private:
    std::vector<T> data;
    size_t ptr = 0;
    size_t len = 0;
public:
    RingBuffer(size_t size_) : data(size_){

    }

    void initTo(const T& val){
        for(size_t i = 0; i<data.size();i++){
            data[i] = val;
        }
    }

    T& get(size_t ind){
        if(ind > len)
            throw std::runtime_error("ringbuffer index out of bounds");
        size_t ind_ = (ptr+data.size()-len+ind)%data.size();
        return data[ind_];
    }

    void add(const T& t){
        data[ptr++] = t;
        ptr %= data.size();
        len = std::min(len+1,data.size());
    }

    size_t size(){
        return len;
    }
    size_t sizeMax(){
        return data.size();
    }
};

#endif