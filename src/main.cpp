#include "main.h"
#include "hash.h"
#include "myrandom.h"
#include <sys/types.h>
#include <dirent.h>


#define PRE std::string("~")
#define BOT_TOKEN "NTM0MzMzMzUxOTY0ODM1ODQx.XwMpIg.b9v0AH8NBNPJMK14qddaed_LPdY"


template<typename Iter, typename RandomGenerator>
Iter select_randomly(Iter start, Iter end, RandomGenerator &g) {
      std::uniform_int_distribution<> dis(0, std::distance(start, end) - 1);
      std::advance(start, dis(g));
      return start;
}
template<typename Iter>
Iter select_randomly(Iter start, Iter end) {
      static std::random_device rd;
      static std::mt19937 gen(rd());
      return select_randomly(start, end, gen);
}

void read_directory(const std::string &name, std::vector<std::string> &v) {
      DIR *dirp = opendir(name.c_str());
      struct dirent * dp;
      while ((( dp = readdir(dirp)) != NULL)) {
            if(equals(dp->d_name, ".") || equals(dp->d_name, "..")) {
                  continue;
            }
            v.push_back(dp->d_name);
            std::cout << "pushing: " << dp->d_name << std::endl;
      }
      closedir(dirp);
}


void NanachiBot::init() {
      helpEmbed.title = "NanachiBot";
      helpEmbed.description = 
      "Help for NanachiBot\nCurrent prefix is `" + PRE + "`";
      helpField.name = "SPAWN RANDOM PICTURES";
      helpField.value = "`nanachi` `mia`";
      helpEmbed.fields.push_back(helpField);
}
void NanachiBot::init_file_read() {
      read_directory("pictures/nanachi", fileList["nanachi"]);
      read_directory("pictures/made in abyss", fileList["mia"]);
}
void NanachiBot::onReady(SleepyDiscord::Ready readyData) {
      updateStatus("try ~help");
}
void NanachiBot::onServer(SleepyDiscord::Server server) {

}
void NanachiBot::onMessage(SleepyDiscord::Message message) {
      if (message.startsWith(PRE)) {
            auto channel = message.channelID;
            std::string command = message.content.substr(1);
            switch(hash(command.c_str())){
                  default : {} break;
                  case "hello"_ : {
                        sendMessage(channel, "yo my nibba " +  message.author.username  + " wassup");
                  } break;
                  case "nanachi"_ : {
                        std::string fileName = *select_randomly(fileList["nanachi"].begin(), fileList["nanachi"].end());
                        uploadFile(channel, "pictures/nanachi/" + fileName, "");
                        print_file(fileName);
                  } break;
                  case "mia"_ : {
                        std::string fileName = *select_randomly(fileList["mia"].begin(), fileList["mia"].end());
                        uploadFile(channel, "pictures/made in abyss/" + fileName, "");
                        print_file(fileName);
                  } break;
                  case "help"_ : {
                        sendMessage(channel, "", helpEmbed);
                  } break;
            }
      }
}
void NanachiBot::print_file(const std::string &fileName) {
      std::cout << "Sending out: "<< fileName << std::endl;
}


int main() {
	NanachiBot client(BOT_TOKEN, SleepyDiscord::USER_CONTROLED_THREADS);
      client.init();
      client.init_file_read();
      client.run();
}
