
import 'package:flutter/material.dart';

void main() {
	runApp(const MyApp());
}

class MyApp extends StatelessWidget {
	const MyApp({super.key});

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'Login Demo',
			theme: ThemeData(
				primarySwatch: Colors.blue,
			),
			home: const LoginPage(),
		);
	}
}

class LoginPage extends StatefulWidget {
	const LoginPage({super.key});

	@override
	State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
	final TextEditingController _emailController = TextEditingController();
	final TextEditingController _passwordController = TextEditingController();

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: const Text('Login'),
			),
			body: Padding(
				padding: const EdgeInsets.all(16.0),
				child: Column(
					mainAxisAlignment: MainAxisAlignment.center,
					children: [
						TextField(
							controller: _emailController,
							decoration: const InputDecoration(
								labelText: 'Email',
								border: OutlineInputBorder(),
							),
							keyboardType: TextInputType.emailAddress,
						),
						const SizedBox(height: 16),
						TextField(
							controller: _passwordController,
							decoration: const InputDecoration(
								labelText: 'Password',
								border: OutlineInputBorder(),
							),
							obscureText: true,
						),
						const SizedBox(height: 24),
						ElevatedButton(
							onPressed: () {
								// Add login logic here
								final email = _emailController.text;
								final password = _passwordController.text;
								ScaffoldMessenger.of(context).showSnackBar(
									SnackBar(content: Text('Email: $email\nPassword: $password')),
								);
							},
							child: const Text('Login'),
						),
					],
				),
			),
		);
	}
}
