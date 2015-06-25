.class public Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo$EngineTypes;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final G_DATA:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo$EngineTypes;->G_DATA:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
