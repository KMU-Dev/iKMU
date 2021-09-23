.class Ltw/edu/kmu/facade/GPSFacade$1;
.super Ljava/lang/Object;
.source "GPSFacade.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/facade/GPSFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/facade/GPSFacade;


# direct methods
.method constructor <init>(Ltw/edu/kmu/facade/GPSFacade;)V
    .locals 0

    .line 32
    iput-object p1, p0, Ltw/edu/kmu/facade/GPSFacade$1;->this$0:Ltw/edu/kmu/facade/GPSFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 13

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gps change getProvider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltw/edu/kmu/facade/GPSFacade;->access$000(Ljava/lang/String;)V

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gps isARListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltw/edu/kmu/facade/GPSFacade$1;->this$0:Ltw/edu/kmu/facade/GPSFacade;

    invoke-static {v1}, Ltw/edu/kmu/facade/GPSFacade;->access$100(Ltw/edu/kmu/facade/GPSFacade;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltw/edu/kmu/facade/GPSFacade;->access$000(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Ltw/edu/kmu/facade/GPSFacade$1;->this$0:Ltw/edu/kmu/facade/GPSFacade;

    invoke-static {v0}, Ltw/edu/kmu/facade/GPSFacade;->access$100(Ltw/edu/kmu/facade/GPSFacade;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 59
    :goto_0
    iget-object v2, p0, Ltw/edu/kmu/facade/GPSFacade$1;->this$0:Ltw/edu/kmu/facade/GPSFacade;

    invoke-static {v2}, Ltw/edu/kmu/facade/GPSFacade;->access$200(Ltw/edu/kmu/facade/GPSFacade;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 60
    iget-object v2, p0, Ltw/edu/kmu/facade/GPSFacade$1;->this$0:Ltw/edu/kmu/facade/GPSFacade;

    invoke-static {v2}, Ltw/edu/kmu/facade/GPSFacade;->access$200(Ltw/edu/kmu/facade/GPSFacade;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const/4 v3, 0x2

    .line 62
    new-array v3, v3, [F

    if-eqz p1, :cond_2

    .line 65
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    const-string v8, "latitude"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-string v10, "longitude"

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    move-object v12, v3

    invoke-static/range {v4 .. v12}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const-string v4, "aa"

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x1

    aget v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    aget v3, v3, v0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 69
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    cmpl-double v8, v4, v6

    if-lez v8, :cond_0

    iget-object v4, p0, Ltw/edu/kmu/facade/GPSFacade$1;->this$0:Ltw/edu/kmu/facade/GPSFacade;

    invoke-static {v4}, Ltw/edu/kmu/facade/GPSFacade;->access$300(Ltw/edu/kmu/facade/GPSFacade;)Ljava/text/DecimalFormat;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    div-double/2addr v8, v6

    invoke-virtual {v4, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    iget-object v4, p0, Ltw/edu/kmu/facade/GPSFacade$1;->this$0:Ltw/edu/kmu/facade/GPSFacade;

    invoke-static {v4}, Ltw/edu/kmu/facade/GPSFacade;->access$400(Ltw/edu/kmu/facade/GPSFacade;)Ljava/text/DecimalFormat;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    const-string v5, "distance"

    .line 70
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    cmpl-double v3, v8, v6

    if-lez v3, :cond_1

    const-string v3, "km"

    goto :goto_2

    :cond_1
    const-string v3, "m"

    :goto_2
    const-string v5, "d"

    .line 73
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 77
    :cond_3
    iget-object p1, p0, Ltw/edu/kmu/facade/GPSFacade$1;->this$0:Ltw/edu/kmu/facade/GPSFacade;

    invoke-static {p1}, Ltw/edu/kmu/facade/GPSFacade;->access$200(Ltw/edu/kmu/facade/GPSFacade;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Ltw/edu/kmu/facade/GPSFacade$1$1;

    invoke-direct {v0, p0}, Ltw/edu/kmu/facade/GPSFacade$1$1;-><init>(Ltw/edu/kmu/facade/GPSFacade$1;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 85
    iget-object p1, p0, Ltw/edu/kmu/facade/GPSFacade$1;->this$0:Ltw/edu/kmu/facade/GPSFacade;

    invoke-static {p1}, Ltw/edu/kmu/facade/GPSFacade;->access$500(Ltw/edu/kmu/facade/GPSFacade;)Landroid/widget/SimpleAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
