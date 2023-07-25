import 'package:flutter/material.dart';

import 'package:flutter_fest/resources/app_typography.dart';

class ScheduleRowSessionWidget extends StatelessWidget {
  const ScheduleRowSessionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            _SpeakerWidget(),
            _FavoriteButton(),
          ],
        ),
        _DescriptionWidget(),
      ],
    );
  }
}

class _SpeakerWidget extends StatelessWidget {
  const _SpeakerWidget();

  @override
  Widget build(BuildContext context) {
    const avatarSize = 24.0;

    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(avatarSize / 2),
          child: Image.network(
            'https://randomuser.me/api/portraits/men/34.jpg',
            height: avatarSize,
            width: avatarSize,
          ),
        ),
        const SizedBox(width: 8),
        const Text(
          'Иннокентий Христорожденныйвсубботу',
          overflow: TextOverflow.ellipsis,
          style: AppTypography.sessionSpeakerActive,
        ),
      ],
    );
  }
}

class _FavoriteButton extends StatelessWidget {
  const _FavoriteButton();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _DescriptionWidget extends StatelessWidget {
  const _DescriptionWidget();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
