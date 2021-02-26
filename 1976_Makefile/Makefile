
all: Eve_baton.txt
	sleep 5
	cat Eve_baton.txt

Eve_baton.txt: Dave_baton.txt
	sleep 5
	cat Dave_baton.txt > Eve_baton.txt
	echo "Eve passes the baton" >> Eve_baton.txt

Dave_baton.txt: Cathy_baton.txt
	sleep 5
	cat Cathy_baton.txt > Dave_baton.txt
	echo "Dave passes the baton" >> Dave_baton.txt

Cathy_baton.txt: Bob_baton.txt
	sleep 5
	cat Bob_baton.txt > Cathy_baton.txt
	echo "Cathy passes the baton" >> Cathy_baton.txt

Bob_baton.txt: Amy_baton.txt
	sleep 5
	cat Amy_baton.txt > Bob_baton.txt
	echo "Bob passes the baton" >> Bob_baton.txt

Amy_baton.txt:
	sleep 5
	echo "Amy passes the baton" > Amy_baton.txt
