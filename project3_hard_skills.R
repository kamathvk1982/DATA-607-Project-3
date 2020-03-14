library(stringr)
library(dplyr)
library(ggplot2)
library(scales)

# Read the data
ds <- read.csv('https://raw.githubusercontent.com/davidblumenstiel/data/master/indeed_job_dataset.csv', stringsAsFactors = F)

# List all hard skills and how often they were listed in a separate dataframe
for (i in 1:nrow(ds)) {
  slist <- str_extract_all(ds$Skill[i], "'.+?'")
  temp_df <- data.frame(skill = slist[[1]])
  
  if (nrow(temp_df) > 0) {
    
    temp_df$id <- i - 1
    temp_df$skill <- as.character(temp_df$skill)
    temp_df <- select(temp_df, id, skill)
    
    if (i == 1) {
      sdf <- temp_df
    } else {
      sdf <- bind_rows(sdf, temp_df)
    }
  }
}

sdf$skill <- str_replace_all(sdf$skill, "'", "")

hard_skills_df <- sdf

hs <- group_by(hard_skills_df, skill) %>%
  summarize(total_count = n())

head(hs)

top_x <- 20

ggplot( arrange(hs, desc(total_count))[1:top_x,], aes(x = reorder(skill, total_count), y = total_count)) +
  geom_col() +
  coord_flip() +
  labs(title = str_c('Top ', top_x, ' Technical Skills'),
       subtitle = str_c('Total Occurences out of ', nrow(ds), ' Job Posts'),
       x = element_blank(),
       y = element_blank()) +
  scale_y_continuous(label = comma)


ggplot( arrange(hs, desc(total_count))[1:top_x,], aes(x = reorder(skill, total_count), y = total_count/nrow(ds))) +
  geom_col() +
  coord_flip() +
  labs(title = str_c('Top ', top_x, ' Technical Skills'),
       subtitle = str_c('Percent of Job Posts'),
       x = element_blank(),
       y = element_blank()) +
  scale_y_continuous(label = percent_format(accuracy = 1))
        
                     