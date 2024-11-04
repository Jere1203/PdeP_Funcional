class Torneo {
    const participantes = #{} //Los participantes son los platos de los chefs, no los chefs per se(?

    method participantes(unParticipante) {
        participantes.add(unParticipante)
    }

    method ganador() {
        self.verificarParticipantes()
        const mejorPlato = participantes.max { unPlato => self.calificar(unPlato) }
        mejorPlato.chef()
    }

    method calificar(unPlato) = participantes.sum { unCatador => unCatador.catar(unPlato) }

    method verificarParticipantes() {
        if (participantes.isEmpty()) {
            throw new DomainException(message = "No hay participantes")
        }
    }
}