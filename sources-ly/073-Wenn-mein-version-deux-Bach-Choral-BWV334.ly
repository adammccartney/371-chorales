
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 334" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Wenn mein Stündlein vorhanden ist (2)" }
                     \line { \italic "old: Herr Jesu Christ, du höchstes Gut" }
                 } }
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
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 } %fin du repeat
        r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        R1 |
        \tempo 4 = 40 r2. 
	}

  upper = {
	\time 4/4
	\key g \minor
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        g4 |
        g4 fis g a |
        bes4 a g\fermata g |
        a4 a d c |
        bes2 a4\fermata } %fin du repeat
        d4 |
        c4 bes a8 bes c4 |
        bes4 a g4\fermata bes |
        a4 g f8 e! d8 e |
        f4 g a\fermata a |
        bes4 c d4. c8 |
        bes4 c8 bes a2 |
        g2.\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        d4 |
        es4 d8 c bes4 es |
        d4 d d d |
        es4 d d g8 fis |
        g2 fis4 } %fin du repeat
        g4 |
        g8 f f es es d c a' |
        fis8 g4 fis8 d4 g8 f |
        e8 d d cis d e f cis! |
        d8 f4 e8 f4 f |
        f8 g a4 a d,4 ~ |
	d4 c8 d es4 d8 c |
        b2. 
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key g \minor
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        bes4 |
        a4 a g c |
        fis,8 g4 fis8 bes4 bes |
        c4 c b c |
        d4 e8 g, d'4 } %fin du repeat
        d4 |
        es8 f g bes, c d g, c |
        d8 es a, d bes4 d |
        cis8 d e4 a,4. g8 |
        a8 c d c c4 c |
        d4 es f fis |
        g4 g,4 ~ g fis |
        d2. 
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        g4 |
        c,4 d es d8 c |
        d4 d g,\fermata g' |
        g4 fis f es |
        d4 cis d\fermata } %fin du repeat
        bes'4 ~ |
	bes8 a8 g4 ~ g8 f es4 |
        d8 c d4 g,\fermata g'4 ~ |
	g8 f8 e4 d2 ~ |
        d8 a bes c f,4\fermata f'8 es! |
        d8 es d c bes c bes a |
        g8 bes es d c a d4 |
        g,2.\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "73." }
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

