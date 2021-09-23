.class public final Ltw/edu/kmu/gcm/CommonUtilities;
.super Ljava/lang/Object;
.source "CommonUtilities.java"


# static fields
.field public static DISPLAY_MESSAGE_ACTION:Ljava/lang/String; = "com.google.android.gcm.demo.app.DISPLAY_MESSAGE"

.field public static final EXTRA_MESSAGE:Ljava/lang/String; = "message"

.field public static final SENDER_ID:Ljava/lang/String; = "129277633160"

.field public static final TAG:Ljava/lang/String; = "GCMDemo"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static displayMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 66
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Ltw/edu/kmu/gcm/CommonUtilities;->DISPLAY_MESSAGE_ACTION:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "message"

    .line 67
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
