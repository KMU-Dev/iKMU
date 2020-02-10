.class Ltw/edu/kmu/act/TrafficTabActivity$3;
.super Ljava/lang/Object;
.source "TrafficTabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/TrafficTabActivity;->initBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/TrafficTabActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/TrafficTabActivity;)V
    .locals 0

    .line 110
    iput-object p1, p0, Ltw/edu/kmu/act/TrafficTabActivity$3;->this$0:Ltw/edu/kmu/act/TrafficTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 113
    iget-object p1, p0, Ltw/edu/kmu/act/TrafficTabActivity$3;->this$0:Ltw/edu/kmu/act/TrafficTabActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/TrafficTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ltw/edu/kmu/facade/GPSFacade;->getInstance(Landroid/content/Context;)Ltw/edu/kmu/facade/GPSFacade;

    move-result-object p1

    invoke-virtual {p1}, Ltw/edu/kmu/facade/GPSFacade;->getLocation()Landroid/location/Location;

    move-result-object p1

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://maps.google.com/maps?f=d&saddr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "%20"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "&daddr="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Ltw/edu/kmu/act/TrafficTabActivity$3;->this$0:Ltw/edu/kmu/act/TrafficTabActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/TrafficTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0c0113

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%20"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Ltw/edu/kmu/act/TrafficTabActivity$3;->this$0:Ltw/edu/kmu/act/TrafficTabActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/TrafficTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0c0114

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&hl=en"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "com.google.android.apps.maps"

    const-string v1, "com.google.android.maps.MapsActivity"

    .line 116
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    iget-object p1, p0, Ltw/edu/kmu/act/TrafficTabActivity$3;->this$0:Ltw/edu/kmu/act/TrafficTabActivity;

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/TrafficTabActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
