#ifndef _ARGUMENTS_H_
#define _ARGUMENTS_H_

namespace foxintango {
    class argument {
    public:
        std::string name;
        std::vector<std::string> values;
    public:
        argument() {}
       ~argument() {}
    public:
        void echo() {
            std::cout << "name : " << this->name <<std::endl;
            for(int i = 0;i < values.size();i ++) {
                std::cout << "value AT : " << i << values[i] << std::endl;
            }
        }

        bool empty() const {
            return 0 == values.size();
        }
    };

    class arguments {
    public:
        std::map<std::string,argument> argumentMap;
    public:
        arguments(const int& count,char** content) {
            if(count && content) {
                int i = 0;// 参数偏移量
                int o = 1;// 参数值偏移量

                while(i < count) {
                    char* param = content[i];
                    //std::cout << "parse i : " << i << std::endl;
                    if('-' == param[0] && strlen(param) > 1) {
                    argument arg;
                    arg.name += &param[1];
                    o = 1;
                    while(i + o < count) {
                        param = content[i + o];
                        //std::cout << "parse o : " << o << std::endl;
                        if('-' == param[0]) {
                            break;
                        } else {
                            std::string value(content[i + o]);
                            arg.values.push_back(value);
                            o ++;
                        }
                    }
                    argumentMap.insert(std::pair<std::string,argument>(arg.name,arg));
                }

                i += o;
                o  = 1;
            }
        }
    }

    ~arguments() {}
    public:
        void echo() {
            auto iter = argumentMap.begin();

            while(iter != argumentMap.end()) {
                (*iter).second.echo();
                iter ++;
            }
        }

        bool contain(const std::string& name) const {
            if(argumentMap.count(name)) return true;

            return false;
        }

        const argument& at(const std::string& name) const {
            if(contain(name)) {
                return argumentMap.at(name);
            }

            return argument();
        }
    };
}

#endif
