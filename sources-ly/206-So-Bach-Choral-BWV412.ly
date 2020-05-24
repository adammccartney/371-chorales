
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 412" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "So gibst du nun, mein Jesu, gute Nacht" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        r4 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r4 \tempo 4 = 30 r4 \tempo 4 = 78 r2 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
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
        bes4 |
        d4. c8 bes4\fermata d4 |
        c4 bes bes a |
        bes2\fermata r4 d4 |
        f4. es8 d4\fermata d8 c |
        bes8 a g4 a4. g8 |
        fis4 d4\fermata r4 a'4 |
        c4. bes8 a4 bes4 |
        bes4 a g4. g8 |
        a2\fermata r4 a4 |
        bes4 c d4\fermata d8 e16 f |
        e4. d8 cis4 d |
        d4. cis8 d4\fermata fis, |
        g4 a bes\fermata g8 a16 bes |
        a4. g8 fis4 g |
        g4. fis8 g4\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        g4 |
        a8 g a4 g g |
        g4 f es8 d es4 |
        d2 r4 f4 |
        f4. f8 f4 d |
        d4 g8 f g4 es |
        d4 a r4 f'4 |
        g8 f g4 f8 a g8 f |
        e4 f ~ f4 ~ f8 e |
        f2 r4 f4 |
        f4 f f f |
        bes8 a b4 a a |
        a4 a a d, |
        d4 d d g8 f |
        es8 d e4 d d |
        d2 d4
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
        d4 |
        d4 d d bes |
        c4 d g, f8 es! |
        f2 r4 bes4 |
        c8 bes c4 bes a |
        g8 a bes4 es8 d c bes |
        a4 fis r4 d'4 |
        c4 c c d |
        g,4 a8 bes c4. c8 |
        c2 r4 c4 |
        d4 c bes d |
        g8 f e4 e f |
        e8 d e4 fis a, |
        bes4 a g bes |
        c8 bes a4 a bes |
        a8 g a4 b4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        g4 |
        fis4. fis8 g4\fermata g8 f |
        es4 d c4. c8 |
        bes2\fermata r4 bes'4 |
        a4. a8 bes4\fermata fis |
        g8 f! es d c4 c |
        d4 d,\fermata r4 d'4 |
        e4. e8 f4 bes, |
        c4 f c4. c8 |
        f,2\fermata r4 f'8 es |
        d8 c bes a bes4\fermata bes8 a |
        g4 gis a d |
        a2 d4\fermata d8 c |
        bes8 a g fis g4\fermata es'8 d |
        c4 cis d8 c bes g |
        d'2 g,4\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "206." }
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

