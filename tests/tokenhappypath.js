var ERC20.sol = artifacts.require("./ERC20.sol");

// test suite
contract('ERC20', function(accounts){
  it("should be initialized with empty values", function() {
    return ERC20.deployed().then(function(instance) {
      return instance.totalSupply();
      var totalSupply = instance.totalSupply();
      assert.equal(totalSupply, 0);
  });
})
