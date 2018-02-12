Unfortunately, I couldn't get the spade parser working, yet.
Here's how far I've come.

# Debugging

cd /opt/bllip-parser
./parse.sh /tmp/spade/input.txt > /tmp/spade/input.txt.chp

cd /opt/spade-parser/bin

perl discparse.pl /tmp/spade/input.txt.chp
# Error (no ouput): dependencies /tmp/spade/input.txt.chp /tmp/spade/input.txt.chp.edu

	perl edubreak.pl /tmp/spade/input.txt.chp /tmp/spade/input.txt.chp.edu
	perl raw2fmt.pl /tmp/spade/input.txt.chp.edu

	./dependencies /tmp/spade/input.txt.chp /tmp/spade/input.txt.chp.edu.fmt      

	# 2 /tmp/spade/input.txt.chp:0/36
	# As competition heats up in Spain 's crowded bank market , Banco Exterior de Espana is seeking to shed its image of a state-owned bank | and move into new activities . | 
	# Segmentation fault (core dumped)

	./dependencies /tmp/spade/input_short.txt.chp /tmp/spade/input_short.txt.chp.edu.fmt
	# 2 /tmp/spade/input_short.txt.chp:0/1
	# Although they did not like him , | they accepted the offer . | 
	# Segmentation fault (core dumped)
