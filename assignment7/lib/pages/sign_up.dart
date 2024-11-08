import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final phoneController = TextEditingController();
  bool _isObscure = true;
  String? selectedCountry;
  String? selectedProvider;

  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: const Text(
                    "DEV",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: TextFormField(
                    controller: usernameController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter your username",
                      prefixIcon: Icon(Icons.person_2_outlined),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your username';
                      } else if (value.length < 3) {
                        return 'Username must be at least 3 characters';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 20.0),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter your email",
                      prefixIcon: Icon(Icons.email_outlined),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                          .hasMatch(value)) {
                        return 'Enter a valid email';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 20.0),
                // Country Dropdown Field
                DropdownButtonFormField<String>(
                  value: selectedCountry,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.flag_outlined),
                    hintText: 'Select your country',
                  ),
                  items: ['United States', 'Canada', 'India', 'United Kingdom']
                      .map((country) => DropdownMenuItem(
                            value: country,
                            child: Text(country),
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedCountry = value;
                    });
                  },
                  validator: (value) =>
                      value == null ? 'Please select your country' : null,
                ),
                const SizedBox(height: 20.0),
                // Phone Number Field
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: TextFormField(
                    controller: phoneController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter your phone number",
                      prefixIcon: Icon(Icons.phone),
                    ),
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your phone number';
                      } else if (!RegExp(r'^\+?\d{7,15}$').hasMatch(value)) {
                        return 'Enter a valid phone number';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 20.0),
                // Provider Dropdown Field
                DropdownButtonFormField<String>(
                  value: selectedProvider,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.account_circle),
                    hintText: 'Select provider',
                  ),
                  items: ['Provider A', 'Provider B', 'Provider C']
                      .map((provider) => DropdownMenuItem(
                            value: provider,
                            child: Text(provider),
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedProvider = value;
                    });
                  },
                  validator: (value) =>
                      value == null ? 'Please select a provider' : null,
                ),
                const SizedBox(height: 20.0),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter your password",
                      prefixIcon: const Icon(Icons.lock_outline),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isObscure ? Icons.visibility_off : Icons.visibility,
                        ),
                        onPressed: () {
                          setState(() {
                            _isObscure =
                                !_isObscure; // Toggle password visibility
                          });
                        },
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      } else if (value.length < 6) {
                        return 'Password must be at least 6 characters';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 20.0),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: TextFormField(
                    controller: confirmPasswordController,
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Confirm your password",
                      prefixIcon: const Icon(Icons.lock_outline),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isObscure ? Icons.visibility_off : Icons.visibility,
                        ),
                        onPressed: () {
                          setState(() {
                            _isObscure =
                                !_isObscure; // Toggle password visibility
                          });
                        },
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please confirm your password';
                      } else if (value != passwordController.text) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      String username = usernameController.text;
                      String email = emailController.text;
                      String password = passwordController.text;
                      String phone = phoneController.text;
                      String country = selectedCountry ?? 'No country selected';
                      String provider =
                          selectedProvider ?? 'No provider selected';
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
