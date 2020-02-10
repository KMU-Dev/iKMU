.class public Ltw/edu/kmu/fcm/MyFirebaseInstanceIDService;
.super Lcom/google/firebase/iid/FirebaseInstanceIdService;
.source "MyFirebaseInstanceIDService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/fcm/MyFirebaseInstanceIDService$UpdateMachineData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MyFirebaseInstanceIDService"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Ltw/edu/kmu/fcm/MyFirebaseInstanceIDService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private sendRegistrationToServer(Ljava/lang/String;)V
    .locals 3

    .line 79
    new-instance v0, Ltw/edu/kmu/fcm/MyFirebaseInstanceIDService$UpdateMachineData;

    invoke-direct {v0, p0, p1}, Ltw/edu/kmu/fcm/MyFirebaseInstanceIDService$UpdateMachineData;-><init>(Ltw/edu/kmu/fcm/MyFirebaseInstanceIDService;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 80
    new-array p1, p1, [Ljava/lang/Integer;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p1, v2

    invoke-virtual {v0, p1}, Ltw/edu/kmu/fcm/MyFirebaseInstanceIDService$UpdateMachineData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public onTokenRefresh()V
    .locals 5

    .line 54
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Ltw/edu/kmu/fcm/MyFirebaseInstanceIDService;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Ltw/edu/kmu/act/MyApplication;

    .line 59
    iput-object v0, v1, Ltw/edu/kmu/act/MyApplication;->regId:Ljava/lang/String;

    .line 60
    sget-object v2, Ltw/edu/kmu/fcm/MyFirebaseInstanceIDService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "globalVariable.regId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Ltw/edu/kmu/act/MyApplication;->regId:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-direct {p0, v0}, Ltw/edu/kmu/fcm/MyFirebaseInstanceIDService;->sendRegistrationToServer(Ljava/lang/String;)V

    return-void
.end method
