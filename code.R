library(readxl)
Q1u16 <- read_excel("Desktop/Q1u16.xlsx")
View(Q1u16)
tab<- table(Q1u16$source,Q1u16$action_type)
> tab
#Overall practice volume and performance (e.g. # of questions answered, % of
questions answered correctly)
prop.table(tab)*100
> mosaicplot(user_answer~action_type,data = Q1u16)
> mosaicplot(user_answer~source,data = Q1u16)
# (b) Learning activity
tab<- table(Q1u16$action_type)
prop.table(tab)*100
#plot histogram
library (ggplot2)
ggplot(Q1u16, aes(x = action_type)) +
  geom_bar()
#(c) other metrics
# source
tab<- table(Q1u16$source)
prop.table(tab)*100
#plot histogram
ggplot(Q1u16, aes(x = source))+
  geom_bar()

# Cursor time

#plot box pot
par(mfrow=c(1,1))

par(oma = c(1, 1, 1, 1)) 
par(mar = c(4, 1, 4, 1))

boxplot(Q1u16$cursor_time, 
        horizontal = T,
        xlab = "cursor time",
        main="Cursor time")

# 2. What are the questions/items? To answer this question, you will need to compile a
question profile table (Table 2)
library(readxl)
Question <- read_excel("Desktop/Question.xlsx")
View(Question)
table2 <- head(Question,10)
table 2
#correct answer Plot
ggplot(Question, aes(x = correct_answer))+
  +     geom_bar()
#mosaic plot of Correct answer with part
mosaicplot(part~correct_answer,data = Question)
#plot of part of question
ggplot(Question, aes(x =part))+
  +     geom_bar()

