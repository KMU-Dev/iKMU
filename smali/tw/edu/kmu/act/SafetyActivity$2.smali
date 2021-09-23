.class Ltw/edu/kmu/act/SafetyActivity$2;
.super Landroid/os/Handler;
.source "SafetyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/SafetyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/SafetyActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/SafetyActivity;)V
    .locals 0

    .line 216
    iput-object p1, p0, Ltw/edu/kmu/act/SafetyActivity$2;->this$0:Ltw/edu/kmu/act/SafetyActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 218
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/SafetyActivity$2;->this$0:Ltw/edu/kmu/act/SafetyActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/SafetyActivity;->access$600(Ltw/edu/kmu/act/SafetyActivity;)V

    .line 223
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
