#include "sleepy_discord/sleepy_discord.h"
#include <string>
#include <vector>
#include <sys/types.h>
#include <dirent.h>
#include <random>
#include <iterator>

#define PRE "~"
#define BOT_TOKEN "NTM0MzMzMzUxOTY0ODM1ODQx.XwMpIg.b9v0AH8NBNPJMK14qddaed_LPdY"


bool equals(const std::string &str1, const std::string &str2) {
      return str1 == str2;
}

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

class NanachiBot : public SleepyDiscord::DiscordClient {
public:
      // using inherited class constructor 
	using SleepyDiscord::DiscordClient::DiscordClient;
      std::vector<std::string> fileList;
      void init_file_read() {
            read_directory("pictures/nanachi", fileList);
      }
      void onReady(SleepyDiscord::Ready readyData) override {
            updateStatus("try ~nanachi");
      }
      void onServer(SleepyDiscord::Server server) override {

      }
	void onMessage(SleepyDiscord::Message message) override {
		if (message.startsWith(PRE)) {
                  auto channel = message.channelID;
                  std::string command = message.content.substr(1);
                  if(equals(command, "hello")) {
                        sendMessage(channel, "yo my nibba " +  message.author.username  + " wassup");
                  }
                  if(equals(command, "nanachi")) {
                        std::string fileName = *select_randomly(fileList.begin(), fileList.end());
                        uploadFile(channel, "pictures/nanachi/" + fileName, "");
                        print_file(fileName);
                  }
            }
      }

private:
      void print_file(const std::string &fileName) {
            std::cout << "Sending out thicc nanachi: "<< fileName << std::endl;
      }
};


int main() {
	NanachiBot client(BOT_TOKEN, SleepyDiscord::USER_CONTROLED_THREADS);
      client.init_file_read();
      client.run();
}
