.class Lcom/android/systemui/recent/RAMMeter$6;
.super Ljava/lang/Object;
.source "RAMMeter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RAMMeter;->initObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RAMMeter;

.field private final synthetic val$mSettings:[Ljava/lang/String;

.field private final synthetic val$mSystemSettings:Landroid/database/ContentObserver;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RAMMeter;[Ljava/lang/String;Landroid/database/ContentObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RAMMeter$6;->this$0:Lcom/android/systemui/recent/RAMMeter;

    iput-object p2, p0, Lcom/android/systemui/recent/RAMMeter$6;->val$mSettings:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/recent/RAMMeter$6;->val$mSystemSettings:Landroid/database/ContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/recent/RAMMeter$6;->this$0:Lcom/android/systemui/recent/RAMMeter;

    #getter for: Lcom/android/systemui/recent/RAMMeter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/recent/RAMMeter;->access$2(Lcom/android/systemui/recent/RAMMeter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/recent/RAMMeter$6;->val$mSettings:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-lt v2, v5, :cond_0

    return-void

    :cond_0
    aget-object v1, v4, v2

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/recent/RAMMeter$6;->val$mSystemSettings:Landroid/database/ContentObserver;

    invoke-virtual {v0, v6, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
