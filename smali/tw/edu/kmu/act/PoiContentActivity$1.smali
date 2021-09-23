.class Ltw/edu/kmu/act/PoiContentActivity$1;
.super Ljava/lang/Object;
.source "PoiContentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/PoiContentActivity;->initBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/PoiContentActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/PoiContentActivity;)V
    .locals 0

    .line 157
    iput-object p1, p0, Ltw/edu/kmu/act/PoiContentActivity$1;->this$0:Ltw/edu/kmu/act/PoiContentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 162
    iget-object p1, p0, Ltw/edu/kmu/act/PoiContentActivity$1;->this$0:Ltw/edu/kmu/act/PoiContentActivity;

    invoke-static {p1}, Ltw/edu/kmu/facade/GPSFacade;->getInstance(Landroid/content/Context;)Ltw/edu/kmu/facade/GPSFacade;

    move-result-object p1

    invoke-virtual {p1}, Ltw/edu/kmu/facade/GPSFacade;->getLocation()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 164
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

    iget-object p1, p0, Ltw/edu/kmu/act/PoiContentActivity$1;->this$0:Ltw/edu/kmu/act/PoiContentActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/PoiContentActivity;->access$100(Ltw/edu/kmu/act/PoiContentActivity;)Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "latitude"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%20"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Ltw/edu/kmu/act/PoiContentActivity$1;->this$0:Ltw/edu/kmu/act/PoiContentActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/PoiContentActivity;->access$100(Ltw/edu/kmu/act/PoiContentActivity;)Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "longitude"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&hl=en"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 165
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "com.google.android.apps.maps"

    const-string v1, "com.google.android.maps.MapsActivity"

    .line 166
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    iget-object p1, p0, Ltw/edu/kmu/act/PoiContentActivity$1;->this$0:Ltw/edu/kmu/act/PoiContentActivity;

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/PoiContentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 169
    :cond_0
    iget-object p1, p0, Ltw/edu/kmu/act/PoiContentActivity$1;->this$0:Ltw/edu/kmu/act/PoiContentActivity;

    const-string v0, "\u7121\u6cd5\u53d6\u5f97GPS\u8cc7\u6599,\u8acb\u6aa2\u67e5GPS\u662f\u5426\u958b\u555f"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    const/16 v0, 0x11

    const/4 v1, 0x0

    .line 170
    invoke-virtual {p1, v0, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 171
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
