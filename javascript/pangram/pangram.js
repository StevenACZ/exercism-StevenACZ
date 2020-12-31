export const isPangram = (string) => {
  const alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
  for (let i = 0; i < alphabet.length; i++) {
    const loweredSentence = string.toLowerCase()
    if (!loweredSentence.includes(alphabet[i])) {
      return false
    }
  }
  return true
};