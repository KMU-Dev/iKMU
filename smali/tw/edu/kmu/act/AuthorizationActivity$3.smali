.class Ltw/edu/kmu/act/AuthorizationActivity$3;
.super Ljava/lang/Object;
.source "AuthorizationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/AuthorizationActivity;->updateData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/AuthorizationActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/AuthorizationActivity;)V
    .locals 0

    .line 361
    iput-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$3;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 364
    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationActivity$3;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-virtual {v0}, Ltw/edu/kmu/act/AuthorizationActivity;->finish()V

    return-void
.end method
