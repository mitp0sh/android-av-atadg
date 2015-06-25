.class public Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft$SimChangeActions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LOCATE:Ljava/lang/Integer;

.field public static final LOCK:Ljava/lang/Integer;

.field public static final NONE:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft$SimChangeActions;->NONE:Ljava/lang/Integer;

    .line 16
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft$SimChangeActions;->LOCATE:Ljava/lang/Integer;

    .line 17
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft$SimChangeActions;->LOCK:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
