
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 315" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Gib dich zufrieden und sei stille" }
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
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 } %fin du repeat
        r4 |
        R1 |
        r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
        R1 |
        R1 |
        r4 \tempo 4 = 30 r4 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 30 r4 
	}

  upper = {
	\time 4/4
	\key e \minor
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        b4 |
        g4 a8 b16 c b4. a8 |
        g4 fis8 g16 a g4. fis8 |
        e2\fermata c'4 b |
        e4 d fis,8 c' b a |
        a2 g4\fermata } %fin du repeat
        b4 |
        a4 b8 g a4 b8 c |
        d4 c8 b c b a4\fermata |
        r4 c fis, e'8 dis |
        e8 d! c b a g' fis e8 |
        dis8 cis b4\fermata r4 e |
        \grace { d8 } c4 b8 a b8 dis,! e a |
        g4 fis8 e e4\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        e4 |
        e4 fis8 g16 a g8 dis e fis |
        fis8 e e dis e4. dis!8 |
        e2 g4. fis8 |
        e8 fis fis g fis4 g |
        g4 fis d } %fin du repeat
        g4 |
        a8 fis g e fis4 e |
        d4 e e8 d e4 |
        r4 e dis8 e fis4 |
        e8 fis g f e4 a8 b16 c |
        fis,8 e dis4 r4 e4 |
        e4. fis8 dis fis e e |
        e4 dis b4
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key e \minor
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        g4 |
        b4 c8 fis, g a b c |
        b4 b b8 g a4 |
        g2 g8 a b4 |
        b8 a a b c4 d |
        e4 d8 c b4 } %fin du repeat
        d4 |
        d4 d8 cis d4 gis,8 a |
        a8 b gis4 a8 b c4 |
        r4 c b4. c8 |
        b8 a g gis a b c4 |
        b4 fis r4 b4 |
        a8 b c4 fis,8 a b a |
        b4 a8 g g4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        e4 |
        e8 dis e dis e fis g a |
        b4 b, e2 |
        e2 e4. d8 |
        c8 c'4 b8 a4 g |
        c,4 d g,4 } %fin du repeat 
        g'4 |
        fis8 d g4 d8 e d c |
        b4 e a a, |
        r4 a' b8 c b a |
        g8 fis e d c b a4 |
        b4 b r4 gis' |
        a8 a, a'4. fis8 g c, |
        b8 a b4 e4
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "271." }
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

