
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 194.12" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Nun laßt uns Gott dem Herren" }
                     \line { \italic "old: Wach' auf, mein Herz" }
                 } }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        r4 |
        R2. |
        R2. |
        r2. |
        \tempo 4 = 50 r2 \tempo 4 = 100 r4 |
        R2. |
        R2. |
        r2. |
        \tempo 4 = 50 r2 \tempo 4 = 100 r4 |
        R2. |
        R2. |
        r2. |
        \tempo 4 = 50 r2 \tempo 4 = 100 r4 |
        R2. |
        R2. |
	R2. |
        \tempo 4 = 50 r2. |
	}

  upper = {
	\time 3/4
	\key bes \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        bes4 |
        bes2 a4 |
        g4 a bes |
        c2. |
        bes2\fermata bes4 |
        bes2 c4 |
\break
        a4 g f |
        bes2. |
        a2\fermata a4 |
        bes2 bes4 |
        c2 d4 |
        c2. |
        c2\fermata d4 |
        es2 d4 |
        c4 d8 c bes4 ~ |
	bes8 c8 c4. bes8 |
        bes2.\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        f4 |
        g2 f4 |
        es4 f f |
        g4 f2 |
        f2 f4 |
        f2 g4 |
        f2 f4 |
        f4 e8 d e4 |
        f2 fis4 |
        g2 g4 |
        es2 d4 |
        e4 f8 e g f |
        f2 a4 |
        bes4 c f, |
        g4 a d,8 es |
        f4 g f |
        f2. |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 3/4
	\key bes \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        d4 |
        d2 d8 c |
        bes4 c bes |
        bes2 a4 |
        d2 d4 |
        d2 c4 |
        c2 c4 |
        d4 c bes |
        c2 d4 |
        d2 es4 |
        a,2 bes4 |
        bes4 a8 g bes a |
        a2 d4 |
        d4 c bes |
        bes4 a bes |
        bes2 a4 |
        d2. |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        bes4 |
        g2 d4 |
        es2 d4 |
        es4 f2 |
        bes,2\fermata bes'4 |
        d,2 e4 |
        f4 g a |
        g2. |
        f2\fermata d4 |
        g2 es4 |
        c2 bes4 |
        c2. |
        f2\fermata fis4 |
        g4 a bes |
        e,4 fis g |
        d4 es f |
        bes,2.\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "93." }
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

