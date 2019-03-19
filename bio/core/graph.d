module bio.core.graph;

import bio.core.base;
import std.stdio;
import std.datetime;
import std.datetime; // time
import std.random;



struct Vertex {
  Base base;
  uint id;
}


// for some reason unittest and assets don't work
// UUID for base doesn't work either

void main () {
  auto nowTime = Clock.currTime(UTC());
  int seed = nowTime.second;
  auto rand = Random(seed);
  uint id =  uniform(0, uint.max, rand);

  auto nucleotide = Vertex(charToBase!Base16('T'), id);


  writeln(nucleotide);
}
