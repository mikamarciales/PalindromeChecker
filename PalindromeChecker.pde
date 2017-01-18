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
  if(reverse(plain(word)).equals(plain(word)))
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
public String plain(String sWord)
{
  String newStr = new String();
  for (int i = 0; i < sWord.length(); i++)
  {
    if (Character.isLetter(sWord.charAt(i)) == true)
    {
        newStr = newStr + sWord.charAt(i);
    }
  }
  return newStr.toLowerCase();
}