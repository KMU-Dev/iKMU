.class Ltw/edu/kmu/act/ARMapV2Activity$3;
.super Ljava/lang/Object;
.source "ARMapV2Activity.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/ARMapV2Activity;->initMap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/ARMapV2Activity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/ARMapV2Activity;)V
    .locals 0

    .line 181
    iput-object p1, p0, Ltw/edu/kmu/act/ARMapV2Activity$3;->this$0:Ltw/edu/kmu/act/ARMapV2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 4

    .line 185
    iget-object v0, p0, Ltw/edu/kmu/act/ARMapV2Activity$3;->this$0:Ltw/edu/kmu/act/ARMapV2Activity;

    invoke-static {v0}, Ltw/edu/kmu/act/ARMapV2Activity;->access$400(Ltw/edu/kmu/act/ARMapV2Activity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "title"

    .line 187
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ltw/edu/kmu/act/ARMapV2Activity$3;->this$0:Ltw/edu/kmu/act/ARMapV2Activity;

    const-class v2, Ltw/edu/kmu/act/PoiContentActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 193
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 194
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 197
    :cond_1
    iget-object v0, p0, Ltw/edu/kmu/act/ARMapV2Activity$3;->this$0:Ltw/edu/kmu/act/ARMapV2Activity;

    invoke-virtual {v0, p1}, Ltw/edu/kmu/act/ARMapV2Activity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method
