#ifndef _ARGUMENTS_H_
#define _ARGUMENTS_H_
#include <libcpp/libcpp.h>
#include <iostream>
#include <vector>
#include <map>

namespace foxintango {

class argumentIMPL;
class foxintangoAPI argument {
public:
    std::string name;
    std::vector<std::string> values;
public:
    argument();
   ~argument();
public:
    void echo();
    bool empty() const;
};
class argumentsIMPL;
class foxintangoAPI arguments {
public:
    std::vector<std::string> standalones;
    std::map<std::string,argument> argumentMap;
public:
    arguments(const int& count,char** content);
   ~arguments();
public:
    void echo();
    bool contain(const std::string& name) const;
    const argument& at(const std::string& name) const;
};
}

#endif
