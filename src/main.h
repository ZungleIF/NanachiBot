#pragma once
#include <sleepy_discord/sleepy_discord.h>
#include <map>

inline bool equals(const std::string &str1, const std::string &str2) {
      return str1 == str2;
}

void read_directory(const std::string &name, std::vector<std::string> &v);


class NanachiBot : public SleepyDiscord::DiscordClient {
public:
    // using inherited class constructor 
    using SleepyDiscord::DiscordClient::DiscordClient;

    void init();
    void init_file_read();
    void onReady(SleepyDiscord::Ready readyData) override;
    void onServer(SleepyDiscord::Server server) override;
	void onMessage(SleepyDiscord::Message message) override;

private:
    void print_file(const std::string &fileName);
    std::map<std::string, std::vector<std::string>> fileList;
    SleepyDiscord::Embed helpEmbed;
    SleepyDiscord::EmbedField helpField;
};

