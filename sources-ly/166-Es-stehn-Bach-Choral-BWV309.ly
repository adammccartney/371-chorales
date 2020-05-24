
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 309" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Es stehn vor Gottes Throne" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
	\repeat volta 2 {
        r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 40 r2. \tempo 4 = 78 } %fin du repeat
        r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 30 r4 \tempo 4 = 78 r2. |
        r2 \tempo 4 = 30 r4 
	}

  upper = {
	\time 4/4
	\key g \dorian % f \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        g4 |
        bes4 g fis g |
        a2 bes4\fermata bes |
        a4 bes c a |
        bes2 a4\fermata bes |
        a4 g g fis! |
        g2.\fermata } %fin du repeat
\break
        bes4 |
        bes4 bes a bes |
        g2 fis4\fermata bes4 |
        bes4 bes a bes |
        g2 fis4\fermata g |
        a8 b c4 c b! |
        c4\fermata a bes! a |
        g4 fis g\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        d4 |
        g4 d d8 c bes4 |
        es4 d d g ~ |
	g8 fis8 g4 ~ g8 e d fis! |
        d4 e fis g |
        g8 fis e!4 d2 |
        d2. } %fin du repeat
        g4 |
        g4 g4 ~ g8 f f4 ~ |
	f8 es16 d c4 d d |
        e!8 f g4 g f ~ |
	f8 es16 d es4 d g |
        f4 g8 aes g4 g |
        g4 g fis8 g a4 |
        d,8 es d4 d
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key g \dorian % f \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        bes4 |
        d4 bes a g |
        g4. fis8 g4 d' |
        d4 d e!8 c d c |
        bes8 a g4 d' d |
        es8 a, bes4 ~ bes8 a16 g a4 |
        bes2. } %fin du repeat
        d4 |
        d4 d d d ~ |
	d8 c16 bes a8 g8 a4 g8 a |
        bes8 d c4 c d |
        bes4 a a c |
        c8 d es4 d8 c d4 |
        es4 e d4 ~ d8 c |
        bes4 a8 c b4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        g4 |
        g8 a bes c d4 es8 d |
        c4 d g,\fermata g' |
        d4 g8 f e! a fis d |
        g4 cis, d\fermata g, |
        c4 cis d d, |
        g2.\fermata } %fin du repeat
        g4 |
        g8 a bes c d4 bes |
        es2 d4 g ~ |
	g8 f!8 e! c f es d bes |
        es8 d c a d4\fermata e |
        f4 es8 f g4 g, |
        c4\fermata cis d8 e fis4 |
        g8 c, d4 g,\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "166." }
	\new Staff = "upper" \upper
	\new Staff = "lower" \lower
	>>

    \layout {
%	ragged-last = ##f
	   }

         } % fin de score

  \score {
    \unfoldRepeats { << \guidemidi \upper \lower >> }
    \midi {
    \context {
     \Staff
      \remove "Staff_performer"
               }

     \context {
      \Voice
       \consists "Staff_performer"
                }

     \context { 
      \Score
      tempoWholesPerMinute = #(ly:make-moment 78 4)
		}
	    }
	}

