.class Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$6;
.super Ljava/lang/Object;
.source "HtcGenericNetworkController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->initObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

.field private final synthetic val$mSettings:[Ljava/lang/String;

.field private final synthetic val$mSystemSettings:Landroid/database/ContentObserver;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;[Ljava/lang/String;Landroid/database/ContentObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$6;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$6;->val$mSettings:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$6;->val$mSystemSettings:Landroid/database/ContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v3, 0x0

    const-string v2, "Venom"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HtcGenericNetworkController - mContext: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mContext2:Landroid/content/Context;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mContext2:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$6;->val$mSettings:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-lt v2, v5, :cond_0

    return-void

    :cond_0
    aget-object v1, v4, v2

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$6;->val$mSystemSettings:Landroid/database/ContentObserver;

    invoke-virtual {v0, v6, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
