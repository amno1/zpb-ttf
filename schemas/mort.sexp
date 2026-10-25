;;;; mort.sexp — OpenType table schema
;;;; Generated from Fontations mort.rs spec


(mort-table mort (:tag "mort")
 (:doc
  "The [mort (Glyph Metamorphosis)](https://developer.apple.com/fonts/TrueType-Reference-Manual/RM06/Chap6mort.html) table.")
 (mort-field mort-version mort-u16 :doc
  "Version number of the glyph metamorphosis table.")
 (mort-field mort-unused mort-u16 :doc "Not used; set to 0.")
 (mort-field mort-n-chains mort-u32 :doc
  "Number of metamorphosis chains contained in this table.")
 (mort-field mort-chains mort-var-len-array<chain<a>>))


(mort-table mort-chain (:doc "A chain in a `mort` table.")
 (mort-field mort-default-flags mort-u32 :doc
  "The default specification for subtables.")
 (mort-field mort-chain-length mort-u32 :doc
  "Total byte count, including this header.")
 (mort-field mort-n-feature-entries mort-u16 :doc
  "Number of feature subtable entries.")
 (mort-field mort-n-subtables mort-u16 :doc
  "The number of subtables in the chain.")
 (mort-field mort-features (mort-array mort-feature) :count
  mort-mort-n-feature-entries :doc "Feature entries for this chain.")
 (mort-field mort-subtables mort-var-len-array<subtable<a>> :doc
  "Array of chain subtables."))


(mort-record mort-feature
 (:doc
  "Used to compute the sub-feature flags for a list of requested features and settings.")
 (mort-field mort-feature-type mort-u16 :doc "The type of feature.")
 (mort-field mort-feature-settings mort-u16 :doc
  "The feature's setting (aka selector).")
 (mort-field mort-enable-flags mort-u32 :doc
  "Flags for the settings that this feature and setting enables.")
 (mort-field mort-disable-flags mort-u32 :doc
  "Complement of flags for the settings that this feature and setting disable."))


(mort-table mort-subtable (:doc "A subtable in a `mort` chain.")
 (mort-field mort-length mort-u16 :doc
  "Total subtable length, including this header.")
 (mort-field mort-coverage mort-u16 :doc "Coverage flags and subtable type.")
 (mort-field mort-sub-feature-flags mort-u32 :doc
  "The 32-bit mask identifying which subtable this is.")
 (mort-field mort-data (mort-array mort-u8) :count :remainder :doc
  "Data for the specific subtable type."))


(mort-record mort-contextual-entry-data
 (:doc "Entry payload in a contextual subtable state machine.")
 (mort-field mort-mark-offset mort-i16 :doc
  "Signed word offset of the substitution array for the marked glyph (0 for none).")
 (mort-field mort-current-offset mort-i16 :doc
  "Signed word offset of the substitution array for the current glyph (0 for none)."))


(mort-record mort-insertion-entry-data
 (:doc "Entry payload in an insertion subtable state machine.")
 (mort-field mort-current-insert-index mort-u16 :doc
  "Zero-based index into the insertion glyph table (0xFFFF for none).")
 (mort-field mort-marked-insert-index mort-u16 :doc
  "Zero-based index into the insertion glyph table (0xFFFF for none)."))

