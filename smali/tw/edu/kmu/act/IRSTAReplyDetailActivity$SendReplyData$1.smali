.class Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData$1;
.super Ljava/lang/Object;
.source "IRSTAReplyDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData;)V
    .locals 0

    .line 225
    iput-object p1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData$1;->this$1:Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 229
    iget-object p1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData$1;->this$1:Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData;

    iget-object p1, p1, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData;->this$0:Ltw/edu/kmu/act/IRSTAReplyDetailActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->finish()V

    return-void
.end method
