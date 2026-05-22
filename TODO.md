# TODO - Páginas de Reglamento, Bestiario y Eventos

- [x] Crear `Paginas/Reglamento.html` renderizando el texto del DOCX `Context/Ekko - Reglamento V0.05.14042026.docx`.
- [x] Crear `Paginas/Bestiario.html` leyendo `Context/Ekko - Base de datos - Bestiario.csv`, con cartas volteables (flip) usando el CSS existente.
- [x] Actualizar `Paginas/Eventos.html` para que lea `Context/Ekko - Base de datos - Eventos.csv` en vez de datos hardcodeados.
- [x] Implementar el reglamento nuevo consolidado en `Context/Reglamento-nuevo` (md) y actualizar la p11gina `Paginas/Reglamento.html`.
- [x] Agregar en `Paginas/Changelog.html` el contenido de `Context/Changelog.md` en la sección de Reglamento.
- [ ] Probar en navegador abriendo `index.html` y navegando a las nuevas secciones.

## Implementación: Arte geométrico provisional (Bestiario + Eventos)
- [x] Integrar markup de arte en `Paginas/Bestiario.html`.
- [x] Implementar `getCreatureArt()` y aplicar clases en `Paginas/Bestiario.html`.
- [x] Integrar markup de arte en `Paginas/Eventos.html`.
- [x] Implementar `getEventArt()` y aplicar clases en `Paginas/Eventos.html`.
- [x] Añadir estilos en `Styles.css` para `.tcg-art` y `.art-glyph` + variantes.
- [ ] Verificar visualmente que el arte no rompe layout ni flip.
- [ ] Actualizar `TODO.md` con estado final (si aplica).


