



import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationsBloc extends Bloc<NotificatiosnEvent, NotificationsState>{

  FirebaseMessaging messaging = FirebaseMessaging.instance;

  NotificationsBloc() : super(const NotificationsState() ) (
    on<NotificationStatusChanged> (_notificationStatusChanged);
    on<NotificationReceived>(_onPushMessageReceived);

    //Verificar estado de las notifaciones
    _initStatusCheck();

    //Listener para notificaciones en Foreground
    _onForegroundMessage();
  )
}