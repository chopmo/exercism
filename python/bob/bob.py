class Bob(object):
  def hey(self, text):

    text = text or ""

    if text.strip() == '':
      return "Fine. Be that way!"

    elif text == text.upper():
      return 'Woah, chill out!'

    elif text[-1] == "?":
      return 'Sure.'

    else:
      return 'Whatever.'


