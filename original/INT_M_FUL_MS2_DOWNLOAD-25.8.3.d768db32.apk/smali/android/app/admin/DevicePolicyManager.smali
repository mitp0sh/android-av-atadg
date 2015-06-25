.class public abstract Landroid/app/admin/DevicePolicyManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_ADD_DEVICE_ADMIN:Ljava/lang/String; = "android.app.action.ADD_DEVICE_ADMIN"

.field public static final ACTION_SET_NEW_PASSWORD:Ljava/lang/String; = "android.app.action.SET_NEW_PASSWORD"

.field public static final ACTION_START_ENCRYPTION:Ljava/lang/String; = "android.app.action.START_ENCRYPTION"

.field public static final ENCRYPTION_STATUS_ACTIVATING:I = 0x2

.field public static final ENCRYPTION_STATUS_ACTIVE:I = 0x3

.field public static final EXTRA_ADD_EXPLANATION:Ljava/lang/String; = "android.app.extra.ADD_EXPLANATION"

.field public static final EXTRA_DEVICE_ADMIN:Ljava/lang/String; = "android.app.extra.DEVICE_ADMIN"

.field public static final PASSWORD_QUALITY_ALPHABETIC:I = 0x40000

.field public static final PASSWORD_QUALITY_ALPHANUMERIC:I = 0x50000

.field public static final PASSWORD_QUALITY_BIOMETRIC_WEAK:I = 0x8000

.field public static final PASSWORD_QUALITY_COMPLEX:I = 0x60000

.field public static final PASSWORD_QUALITY_NUMERIC:I = 0x20000

.field public static final PASSWORD_QUALITY_SOMETHING:I = 0x10000

.field public static final PASSWORD_QUALITY_UNSPECIFIED:I = 0x0

.field public static final WIPE_EXTERNAL_STORAGE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getPasswordMinimumLength(Landroid/content/ComponentName;)I
.end method

.method public abstract getPasswordQuality(Landroid/content/ComponentName;)I
.end method

.method public abstract getStorageEncryptionStatus()I
.end method

.method public abstract isActivePasswordSufficient()Z
.end method

.method public abstract isAdminActive(Landroid/content/ComponentName;)Z
.end method

.method public abstract lockNow()V
.end method

.method public abstract removeActiveAdmin(Landroid/content/ComponentName;)V
.end method

.method public abstract resetPassword(Ljava/lang/String;I)Z
.end method

.method public abstract setCameraDisabled(Landroid/content/ComponentName;Z)V
.end method

.method public abstract setPasswordMinimumLength(Landroid/content/ComponentName;I)V
.end method

.method public abstract setPasswordQuality(Landroid/content/ComponentName;I)V
.end method

.method public abstract setStorageEncryption(Landroid/content/ComponentName;Z)I
.end method

.method public abstract wipeData(I)V
.end method
