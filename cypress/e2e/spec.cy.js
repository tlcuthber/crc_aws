describe('200 Status Code Check', () => {
  it('Checks status code is equal to 200 for toyokocuthbert.com', () => {
    cy.request('GET', 'https://toyokocuthbert.com').its('status').should('eq', 200)
  })

  it('Checks status code is equal to 200 for www.toyokocuthbert.com', () => {
    cy.request('GET', 'https://www.toyokocuthbert.com').its('status').should('eq', 200)
  })

  it('Checks status code is equal to 200 for toyokorivera.com', () => {
    cy.request('GET', 'https://toyokorivera.com').its('status').should('eq', 200)
  })

  it('Checks status code is equal to 200 for www.toyokorivera.com', () => {
    cy.request('GET', 'https://www.toyokorivera.com').its('status').should('eq', 200)
  })
})