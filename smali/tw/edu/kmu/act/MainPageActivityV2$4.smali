.class Ltw/edu/kmu/act/MainPageActivityV2$4;
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

    .line 268
    iput-object p1, p0, Ltw/edu/kmu/act/MainPageActivityV2$4;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 271
    iget-object p1, p0, Ltw/edu/kmu/act/MainPageActivityV2$4;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    invoke-virtual {p1}, Ltw/edu/kmu/act/MainPageActivityV2;->finish()V

    return-void
.end method
