.class public Ltw/edu/kmu/act/SafetyMapV2Activity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SafetyMapV2Activity.java"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "SafetyMapV2Activity"


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

.field private serverDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method public static isGPSEnabled(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "location"

    .line 82
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    const-string v0, "gps"

    .line 83
    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private parseLocalPoi()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Ltw/edu/kmu/act/SafetyMapV2Activity;->bundle:Landroid/os/Bundle;

    const-string v3, "map"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 130
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 131
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 132
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 133
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 134
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 135
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 136
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 137
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 139
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 145
    sget-object v2, Ltw/edu/kmu/act/SafetyMapV2Activity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loal POI Json to Map Exception is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method

.method private showPoi()V
    .locals 8

    const/4 v0, 0x0

    .line 93
    :goto_0
    iget-object v1, p0, Ltw/edu/kmu/act/SafetyMapV2Activity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 95
    iget-object v1, p0, Ltw/edu/kmu/act/SafetyMapV2Activity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 97
    new-instance v2, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 99
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    const-string v4, "latitude"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-string v6, "longitude"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 102
    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    const-string v4, "title"

    .line 108
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 111
    iget-object v1, p0, Ltw/edu/kmu/act/SafetyMapV2Activity;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 114
    iget-object v1, p0, Ltw/edu/kmu/act/SafetyMapV2Activity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 115
    iget-object v1, p0, Ltw/edu/kmu/act/SafetyMapV2Activity;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v3}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 116
    iget-object v1, p0, Ltw/edu/kmu/act/SafetyMapV2Activity;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zoomTo(F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 40
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Ltw/edu/kmu/act/SafetyMapV2Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/SafetyMapV2Activity;->bundle:Landroid/os/Bundle;

    const/4 p1, 0x7

    .line 44
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/SafetyMapV2Activity;->requestWindowFeature(I)Z

    .line 46
    invoke-virtual {p0}, Ltw/edu/kmu/act/SafetyMapV2Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f0a00b9

    .line 48
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/SafetyMapV2Activity;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Ltw/edu/kmu/act/SafetyMapV2Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0a0071

    invoke-virtual {v0, p1, v1}, Landroid/view/Window;->setFeatureInt(II)V

    const p1, 0x7f08023b

    .line 51
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/SafetyMapV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 52
    iget-object v0, p0, Ltw/edu/kmu/act/SafetyMapV2Activity;->bundle:Landroid/os/Bundle;

    const-string v1, "header"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p0}, Ltw/edu/kmu/act/SafetyMapV2Activity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f08012f

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/SupportMapFragment;

    .line 55
    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    return-void
.end method

.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 1

    .line 65
    iput-object p1, p0, Ltw/edu/kmu/act/SafetyMapV2Activity;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 69
    iget-object p1, p0, Ltw/edu/kmu/act/SafetyMapV2Activity;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 73
    iget-object p1, p0, Ltw/edu/kmu/act/SafetyMapV2Activity;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zoomTo(F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 75
    invoke-direct {p0}, Ltw/edu/kmu/act/SafetyMapV2Activity;->parseLocalPoi()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/SafetyMapV2Activity;->serverDataList:Ljava/util/ArrayList;

    .line 77
    invoke-direct {p0}, Ltw/edu/kmu/act/SafetyMapV2Activity;->showPoi()V

    return-void
.end method
