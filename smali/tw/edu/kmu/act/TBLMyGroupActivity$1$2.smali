.class Ltw/edu/kmu/act/TBLMyGroupActivity$1$2;
.super Ljava/lang/Object;
.source "TBLMyGroupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/TBLMyGroupActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltw/edu/kmu/act/TBLMyGroupActivity$1;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/TBLMyGroupActivity$1;)V
    .locals 0

    .line 77
    iput-object p1, p0, Ltw/edu/kmu/act/TBLMyGroupActivity$1$2;->this$1:Ltw/edu/kmu/act/TBLMyGroupActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 80
    new-instance p1, Ltw/edu/kmu/act/TBLMyGroupActivity$GetGroupData;

    iget-object p2, p0, Ltw/edu/kmu/act/TBLMyGroupActivity$1$2;->this$1:Ltw/edu/kmu/act/TBLMyGroupActivity$1;

    iget-object p2, p2, Ltw/edu/kmu/act/TBLMyGroupActivity$1;->this$0:Ltw/edu/kmu/act/TBLMyGroupActivity;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Ltw/edu/kmu/act/TBLMyGroupActivity$GetGroupData;-><init>(Ltw/edu/kmu/act/TBLMyGroupActivity;Ltw/edu/kmu/act/TBLMyGroupActivity$1;)V

    const/4 p2, 0x0

    .line 81
    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Ltw/edu/kmu/act/TBLMyGroupActivity$GetGroupData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
