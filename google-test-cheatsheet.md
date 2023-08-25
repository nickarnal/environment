# Definitions
| ISTQB Term | GoogleTest Term            |
|------------|----------------------------|
| test case  | TEST                       |
| test suite | Test Case*, Test Suite     |

**Test Case was used in earlier versions of Google Test and is being replaced with Test Suite*

# Tests
## Main
```
#include "MyTest.h"

int main(int argc, char **argv) {
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}

```
## Plain Old Test Cases
```
TEST(YourSuiteName, YourTest1Name)
{
   // do stuff
}

TEST(YourSuiteName, YourTest2Name)
{
   // do stuff
}
```

## Test Cases With A Fixture
A fixture enables you to do the same setup and access the data across multiple test cases. A fresh fixture is instantiated for each test case.
```
class YourFixtureName : public ::testing::Test
{
  protected:
    // You can define your own constructor but only default
    // constructor (no args) gets called
    YourFixtureName() {};

    // Optional - enables a one time setup/teardown for entire suite)
    static void SetUpTestSuite();
    static void TearDownTestSuite();

    // Called for each test case after the fixture is constructed
    //
    // You can probably implement this in the constructor if you
    // aren't passing in arguments
    void SetUp(std::string optionalArgs) {
      someResource = new Resource(optionalArgs);
    }

    // Called at the end of each test case prior to the destructor
    //
    // You can also do this in the destructor
    void TearDown() {
      // done for each test case
      delete someResource;
    }

    Resource * someResource;

}

// Define test case(s)
TEST_F(YourFixtureName*, YourTest1Name)
{
  // Only needed if you overloaded SetUp() with your own args
  SetUp("an optional arg");

  // do test
}
```
**The fixture class name is passed in instead of the Suite name. It would make sense to name this similar to a Suite.*

## Parameterized Test Cases
A test can be paramterized by defining a slightly different Test Fixture

```
// define your own parameter class, or use an existing class
class YourParamType
{
  ...
}

class YourParameterizedFixtureName : public ::testing::TestWithParam<YourParamType>
{
  // Note this changed to public as compared to a test fixture
  // This is required for SetUp() and TearDown()
  public:
    // same stuff as a test fixture
}

// Define test case(s)
TEST_P(YourParameterizedFixtureName, YourTest1Name)
{
  // Retrieve the parameter object
  YourParamType params = GetParam();

  // do test
}

// Instantiate all cases in this test suite (not just the parameterized ones!)
INSTANTIATE_TEST_SUITE_P(
  YourTestSuiteName,
  YourParameterizedFixtureName,
  // pass in one or more parameter objects
  testing::Values( YourParamType(...), YourParamType(...)))
  
```

# Assertions
## Example
```
// ASSERT will exit the test upon failure and EXPECT will not
EXPECT_EQ(1, 2);
// Specify a failure message
EXPECT_EQ(1, 2) << "failure message";
ASSERT_EQ(1, 2);
```
## Built-in Assertions
*Note: all EXPECT's in the table below can be replaced with ASSERT*
| Assertion | Description |
|-----------|-------------|
| `SUCCEED()` | |
| `FAILURE()` | fatal |
| `ADD_FAILURE()` | non-fatal |
| `ADD_FAILURE_AT(file_path, line_number)` | non-fatal, specific |
| `EXPECT_THAT(value, matcher)` | uses a generic [matcher](http://google.github.io/googletest/reference/matchers.html) |
| `EXPECT_TRUE(val)` | |
| `EXPECT_FALSE(val)` | |
| `EXPECT_PRED*( fxnThatReturnsBool, arg1, arg2, ...)` | more descriptive error than EXPECT_TRUE. * replaced with unique text |
| `EXPECT_PRED_FORMAT*( fxnThatReturnsBool, arg1, arg2, ...)` | provides custom formatting, see docs |
| `EXPECT_EQ(val1, val2)` | == |
| `EXPECT_NE(val1, val2)` | != |
| `EXPECT_GT(val1, val2)` | > |
| `EXPECT_GE(val1, val2)` | >= |
| `EXPECT_LTval1, val2)` | < |
| `EXPECT_LE(val1, val2)` | <= |
| `EXPECT_STREQ(val1, val2)` | string equal |
| `EXPECT_STRNE(val1, val2)` | string not equal |
| `EXPECT_STRCASEEQ(val1, val2)` | string equal, ignore case |
| `EXPECT_STRCASENE(val1, val2)` | string not equal, ignore case |
| `EXPECT_FLOAT_EQ(val1, val2)` | float equal to 4 units of least precision (UPL) |
| `EXPECT_DOUBLE_EQ(val1, val2)` | double equal to 4 units of least precision (UPL) |
| `EXPECT_NEAR(val1, val2, abs_error)` | equal within abs_error |
| `EXPECT_THROW({...code...}, exception_type)` | passes if it throws specified exception |
| `EXPECT_ANY_THROW({...code...})` | passes if an exception is thrown |
| `EXPECT_NO_THROW({...code...})` | passes if no exception is thrown |
| `EXPECT_DEATH( statement, matcher )` | checks for termination with non-zero exit and produces stderr that matches matcher |
| `EXPECT_DEATH_IF_SUPPORTED( statement, matcher )` | |
| `EXPECT_EXIT( statement, predicate, matcher )` | checks for termination with an exit code that satisfies predicate, produces stderr output that matches matcher |

## Custom Assertions
You can declare a custom assertion to simplify 
```
testing::AssertionResult(IsEven(int n))
{
  return (n % 2 == 0) ?
    // you can also define a success log
    testing::AssertionSuccess() :
    testing::AssertionFailure() << n << " is not even";
}

// No need for failure log, assertion result handles it and gives you
// the ability to print the parameter
EXPECT_TRUE(IsEven(3));

// Output
Value of: IsEven(4)
  Actual: false (3 is not even)
Expected: true
```
