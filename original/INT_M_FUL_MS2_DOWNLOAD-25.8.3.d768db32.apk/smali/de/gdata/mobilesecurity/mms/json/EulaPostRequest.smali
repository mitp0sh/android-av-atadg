.class public Lde/gdata/mobilesecurity/mms/json/EulaPostRequest;
.super Lde/gdata/mobilesecurity/mms/json/base/eula/PostRequest;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lde/gdata/mobilesecurity/mms/json/base/eula/PostRequest;-><init>()V

    .line 15
    return-void
.end method

.method public static getLanguageCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/eula/Item$Languages;->EN:Ljava/lang/Integer;

    .line 26
    const-string v1, "de"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/eula/Item$Languages;->DE:Ljava/lang/Integer;

    .line 27
    :cond_0
    const-string v1, "es"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/eula/Item$Languages;->ES:Ljava/lang/Integer;

    .line 28
    :cond_1
    const-string v1, "fr"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/eula/Item$Languages;->FR:Ljava/lang/Integer;

    .line 29
    :cond_2
    const-string v1, "it"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/eula/Item$Languages;->IT:Ljava/lang/Integer;

    .line 30
    :cond_3
    const-string v1, "ja"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/eula/Item$Languages;->JA:Ljava/lang/Integer;

    .line 31
    :cond_4
    const-string v1, "nl"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/eula/Item$Languages;->NL:Ljava/lang/Integer;

    .line 32
    :cond_5
    const-string v1, "pl"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/eula/Item$Languages;->PL:Ljava/lang/Integer;

    .line 33
    :cond_6
    const-string v1, "ru"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/eula/Item$Languages;->RU:Ljava/lang/Integer;

    .line 34
    :cond_7
    const-string v1, "tr"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/eula/Item$Languages;->TR:Ljava/lang/Integer;

    .line 36
    :cond_8
    const-string v1, "pt"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "PT"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/eula/Item$Languages;->PT_PT:Ljava/lang/Integer;

    .line 37
    :cond_9
    const-string v1, "pt"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "BR"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/eula/Item$Languages;->PT_BR:Ljava/lang/Integer;

    .line 38
    :cond_a
    const-string v1, "zh"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "TW"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/eula/Item$Languages;->ZH_TW:Ljava/lang/Integer;

    .line 39
    :cond_b
    const-string v1, "zh"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "CN"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/eula/Item$Languages;->ZH_CN:Ljava/lang/Integer;

    .line 41
    :cond_c
    return-object v0
.end method
