
all: Eve_baton.txt
	cat Eve_baton.txt

Eve_baton.txt: Dave_baton.txt
	cat Dave_baton.txt > Eve_baton.txt
	echo "Eve passes the baton" >> Eve_baton.txt

Dave_baton.txt: Cathy_baton.txt
	cat Cathy_baton.txt > Dave_baton.txt
	echo "Dave passes the baton" >> Dave_baton.txt

Cathy_baton.txt: Bob_baton.txt
	cat Bob_baton.txt > Cathy_baton.txt
	echo "Cathy passes the baton" >> Cathy_baton.txt

Bob_baton.txt: Amy_baton.txt
	cat Amy_baton.txt > Bob_baton.txt
	echo "Bob passes the baton" >> Bob_baton.txt

Amy_baton.txt:
	echo "Amy passes the baton" > Amy_baton.txt
