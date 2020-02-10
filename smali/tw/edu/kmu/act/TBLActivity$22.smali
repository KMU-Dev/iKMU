.class Ltw/edu/kmu/act/TBLActivity$22;
.super Ljava/lang/Object;
.source "TBLActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/TBLActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/TBLActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/TBLActivity;)V
    .locals 0

    .line 1740
    iput-object p1, p0, Ltw/edu/kmu/act/TBLActivity$22;->this$0:Ltw/edu/kmu/act/TBLActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1744
    new-instance p1, Ltw/edu/kmu/act/TBLActivity$SendBlockTp;

    iget-object p2, p0, Ltw/edu/kmu/act/TBLActivity$22;->this$0:Ltw/edu/kmu/act/TBLActivity;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Ltw/edu/kmu/act/TBLActivity$SendBlockTp;-><init>(Ltw/edu/kmu/act/TBLActivity;Ltw/edu/kmu/act/TBLActivity$1;)V

    const/4 p2, 0x0

    .line 1745
    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Ltw/edu/kmu/act/TBLActivity$SendBlockTp;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
