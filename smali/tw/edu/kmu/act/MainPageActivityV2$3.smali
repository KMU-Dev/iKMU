.class Ltw/edu/kmu/act/MainPageActivityV2$3;
.super Ljava/lang/Object;
.source "MainPageActivityV2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/MainPageActivityV2;->onPermissionsDenied(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/MainPageActivityV2;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/MainPageActivityV2;)V
    .locals 0

    .line 274
    iput-object p1, p0, Ltw/edu/kmu/act/MainPageActivityV2$3;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 278
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 279
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "package"

    .line 280
    iget-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2$3;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    invoke-virtual {v0}, Ltw/edu/kmu/act/MainPageActivityV2;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 281
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 282
    iget-object p2, p0, Ltw/edu/kmu/act/MainPageActivityV2$3;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    invoke-virtual {p2, p1}, Ltw/edu/kmu/act/MainPageActivityV2;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
