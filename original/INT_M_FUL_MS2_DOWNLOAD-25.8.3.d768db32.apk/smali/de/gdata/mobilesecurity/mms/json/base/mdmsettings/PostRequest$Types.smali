.class public Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostRequest$Types;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALL:Ljava/lang/Integer;

.field public static final ANTI_THEFT:Ljava/lang/Integer;

.field public static final APP:Ljava/lang/Integer;

.field public static final CALL_FILTER:Ljava/lang/Integer;

.field public static final CONTACT:Ljava/lang/Integer;

.field public static final POLICY:Ljava/lang/Integer;

.field public static final PROFILE:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostRequest$Types;->POLICY:Ljava/lang/Integer;

    .line 6
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostRequest$Types;->PROFILE:Ljava/lang/Integer;

    .line 7
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostRequest$Types;->APP:Ljava/lang/Integer;

    .line 8
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostRequest$Types;->ANTI_THEFT:Ljava/lang/Integer;

    .line 9
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostRequest$Types;->CALL_FILTER:Ljava/lang/Integer;

    .line 10
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostRequest$Types;->CONTACT:Ljava/lang/Integer;

    .line 11
    const/16 v0, 0x3f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostRequest$Types;->ALL:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
