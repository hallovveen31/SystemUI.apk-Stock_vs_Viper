.class Lcom/android/systemui/statusbar/preference/User$1;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/User;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/User;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/User;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/User$1;->this$0:Lcom/android/systemui/statusbar/preference/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/User$1;->this$0:Lcom/android/systemui/statusbar/preference/User;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/User;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/User$1;->this$0:Lcom/android/systemui/statusbar/preference/User;

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/User$1;->this$0:Lcom/android/systemui/statusbar/preference/User;

    iget-object v2, v2, Lcom/android/systemui/statusbar/preference/User;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/preference/User;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
