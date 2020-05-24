
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 288" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Das alte Jahr vergangen ist" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 
	}

  upper = {
	\time 4/4
	\key a \minor
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        a4 |
        a4 g8 f e4 a |
        g4 e f\fermata a |
        a4 g8 f e4 a |
        g4 e f\fermata a |
        b4 cis d a8 b |
        c!4 b a\fermata b |
        c4 b a a |
        g8 f e4 f\fermata g |
        g4 a g8 f e4 |
        f4 f e\fermata b' |
        c4 b a e |
        a4 a gis\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        e4 |
        f4 e8 d cis4 d |
        d8 e d cis d4 d |
        d2 ~ d8 c8 c f ~ |
	f8 e16 d e8 cis d4 f |
        f8 e e d d4 c!8 d |
        e4. d8 cis4 d |
        e4 d c8 d es4 |
        d4 e d d8 e16 f |
        e4 d8 c d4 e ~ |
	e8 cis8 d4 cis fis |
        e8 fis gis a16 b e,4. e8 |
        e4 dis e
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key a \minor
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        cis4 |
        d8 c! bes g a4 a8 f |
        d8 bes' a4 a f |
        f8 d g4 ~ g8 e f a |
        c8 bes bes a a4 d |
        d4 a a8 gis a4 |
        a4 gis e f |
        g8 e8 f g a bes c4 |
        bes8 a bes a a4 g |
        c8 e, fis g16 a d,4 a' |
        a4 a a a |
        gis8 a b4 c8 d c b |
        c8 a fis b b4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        a8 g |
        f8 d g4 ~ g8 e f d8 |
        bes8 g a4 d\fermata d8 c8 |
        bes4 b c2 ~ |
        c8 e cis a d4\fermata d'4 |
        gis,4 g fis f |
        e8 d e4 a,\fermata d |
        c4 d8 e f4 fis |
        g4 cis, d\fermata b! |
        c4. a8 b4 cis |
        d8 e f g a4\fermata dis, |
        e4. d!8 c b a g |
        fis4 b e\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "162." }
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

