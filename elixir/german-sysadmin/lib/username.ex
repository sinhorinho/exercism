defmodule Username do
  # def sanitize(username) do
  #   # ä becomes ae
  #   # ö becomes oe
  #   # ü becomes ue
  #   # ß becomes ss

  def sanitize(username) do
    Enum.reduce(username, '', fn char, acc ->
      acc ++ sanitize_char(char)
    end)
  end

  defp sanitize_char(char) do
    case char do
      ?_ -> '_'
      ?ä -> 'ae'
      ?ö -> 'oe'
      ?ü -> 'ue'
      ?ß -> 'ss'
      char when char in ?a..?z -> [char]
      _ -> ''
    end
  end
end
