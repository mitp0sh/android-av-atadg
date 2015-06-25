.class public Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final APP_BLOCKED:Ljava/lang/Integer;

.field public static final APP_LOCKED:Ljava/lang/Integer;

.field public static final APP_PROTECTION_DISABLED:Ljava/lang/Integer;

.field public static final CALL_HIDDEN:Ljava/lang/Integer;

.field public static final HASHCODE_BLOCK_APP:Ljava/lang/Integer;

.field public static final HASHCODE_MISMATCH:Ljava/lang/Integer;

.field public static final INCOMMING_CALL_BLOCKED:Ljava/lang/Integer;

.field public static final LOCATE:Ljava/lang/Integer;

.field public static final LOCK_FAIL:Ljava/lang/Integer;

.field public static final LOCK_NO_PASSWORD:Ljava/lang/Integer;

.field public static final LOCK_PASSWORD_RESET:Ljava/lang/Integer;

.field public static final LOCK_SUCCESS:Ljava/lang/Integer;

.field public static final OUTGOING_CALL_BLOCKED:Ljava/lang/Integer;

.field public static final PHISHING_SITE_DETECTED:Ljava/lang/Integer;

.field public static final ROOTED_DEVICE:Ljava/lang/Integer;

.field public static final SCAN_OUTDATED:Ljava/lang/Integer;

.field public static final SET_CAMERA_STATE_FAIL:Ljava/lang/Integer;

.field public static final SET_PASSWORD_FAIL:Ljava/lang/Integer;

.field public static final SET_PASSWORD_SUCCESS:Ljava/lang/Integer;

.field public static final SIGS_OUTDATED:Ljava/lang/Integer;

.field public static final SIM_CHANGED:Ljava/lang/Integer;

.field public static final SMS_HIDDEN:Ljava/lang/Integer;

.field public static final STORAGE_ENCRYPTION_FAIL:Ljava/lang/Integer;

.field public static final STORAGE_ENCRYPTION_SUCCESS:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->OUTGOING_CALL_BLOCKED:Ljava/lang/Integer;

    .line 8
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->INCOMMING_CALL_BLOCKED:Ljava/lang/Integer;

    .line 9
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->APP_LOCKED:Ljava/lang/Integer;

    .line 10
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->APP_BLOCKED:Ljava/lang/Integer;

    .line 11
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->SIM_CHANGED:Ljava/lang/Integer;

    .line 12
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->LOCATE:Ljava/lang/Integer;

    .line 13
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->SMS_HIDDEN:Ljava/lang/Integer;

    .line 14
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->CALL_HIDDEN:Ljava/lang/Integer;

    .line 15
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->HASHCODE_MISMATCH:Ljava/lang/Integer;

    .line 16
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->HASHCODE_BLOCK_APP:Ljava/lang/Integer;

    .line 17
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->SIGS_OUTDATED:Ljava/lang/Integer;

    .line 18
    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->SCAN_OUTDATED:Ljava/lang/Integer;

    .line 19
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->STORAGE_ENCRYPTION_FAIL:Ljava/lang/Integer;

    .line 20
    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->STORAGE_ENCRYPTION_SUCCESS:Ljava/lang/Integer;

    .line 21
    const/16 v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->ROOTED_DEVICE:Ljava/lang/Integer;

    .line 22
    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->PHISHING_SITE_DETECTED:Ljava/lang/Integer;

    .line 23
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->LOCK_SUCCESS:Ljava/lang/Integer;

    .line 24
    const/16 v0, 0x11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->LOCK_PASSWORD_RESET:Ljava/lang/Integer;

    .line 25
    const/16 v0, 0x12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->LOCK_NO_PASSWORD:Ljava/lang/Integer;

    .line 26
    const/16 v0, 0x13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->LOCK_FAIL:Ljava/lang/Integer;

    .line 27
    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->SET_PASSWORD_SUCCESS:Ljava/lang/Integer;

    .line 28
    const/16 v0, 0x15

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->SET_PASSWORD_FAIL:Ljava/lang/Integer;

    .line 29
    const/16 v0, 0x16

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->SET_CAMERA_STATE_FAIL:Ljava/lang/Integer;

    .line 30
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->APP_PROTECTION_DISABLED:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
