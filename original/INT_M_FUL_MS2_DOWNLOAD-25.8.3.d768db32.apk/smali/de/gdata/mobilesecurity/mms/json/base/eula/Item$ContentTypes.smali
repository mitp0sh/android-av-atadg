.class public Lde/gdata/mobilesecurity/mms/json/base/eula/Item$ContentTypes;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HTML:Ljava/lang/Integer;

.field public static final TEXT:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/eula/Item$ContentTypes;->TEXT:Ljava/lang/Integer;

    .line 23
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/eula/Item$ContentTypes;->HTML:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
