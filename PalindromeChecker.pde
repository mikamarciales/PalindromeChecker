public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  if(reverse(word).equals(word))
  {
    return true;
  }
  return false;
}
public String reverse(String str)
{
  String sNew = new String();
  int nLast = str.length() - 1;
  for (int nI = nLast; nI >= 0; nI--)
  {
    sNew = sNew + str.substring(nI, nI+1);
  }
  return sNew;
}