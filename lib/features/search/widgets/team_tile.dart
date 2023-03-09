import 'package:flutter/material.dart';
import 'package:ozare/features/search/bloc/search_bloc.dart';
import 'package:ozare/features/search/models/team.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TeamTile extends StatelessWidget {
  const TeamTile({
    super.key,
    required this.team,
  });

  final Team team;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<SearchBloc>().add(SearchTeamMatchRequested(team));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(children: [
          Container(
            height: 58,
            padding: const EdgeInsets.all(6),
            decoration:
                BoxDecoration(color: Colors.grey[300], shape: BoxShape.circle),
            child: Image.network(team.logo),
          ),
          const SizedBox(width: 16),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(team.name),
              Row(
                children: [
                  Text(
                    'Country: ',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    team.country,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
