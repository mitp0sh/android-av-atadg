.class public Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft$CommonActions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALARM:Ljava/lang/Integer;

.field public static final LOCATE:Ljava/lang/Integer;

.field public static final LOCK:Ljava/lang/Integer;

.field public static final MUTE:Ljava/lang/Integer;

.field public static final NONE:Ljava/lang/Integer;

.field public static final SET_PASSWORD:Ljava/lang/Integer;

.field public static final WIPE:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft$CommonActions;->NONE:Ljava/lang/Integer;

    .line 6
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft$CommonActions;->LOCATE:Ljava/lang/Integer;

    .line 7
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft$CommonActions;->WIPE:Ljava/lang/Integer;

    .line 8
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft$CommonActions;->ALARM:Ljava/lang/Integer;

    .line 9
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft$CommonActions;->MUTE:Ljava/lang/Integer;

    .line 10
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft$CommonActions;->LOCK:Ljava/lang/Integer;

    .line 11
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft$CommonActions;->SET_PASSWORD:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
