//**************************************************
// texture.h
// Author  : katsuki mizuki
//**************************************************
#ifndef _TEXTURE_H_
#define _TEXTURE_H_

//==================================================
// インクルード
//==================================================
#include <d3dx9.h>

//==================================================
// 定義
//==================================================
class CTexture
{
public: /* 定義 */
	enum TEXTURE
	{
		TEXTURE_PLAYER = 0,			// プレイヤー
		TEXTURE_GROUND,				// 地面
		TEXTURE_SHADOW,				// 影
		TEXTURE_TITLE_BG,			// TITLE_BG
		TEXTURE_TITLE,				// TITLE
		TEXTURE_TUTORIAL,			// TUTORIAL
		TEXTURE_START,				// START
		TEXTURE_RESULT,				// RESULT
		TEXTURE_NUMBER,				// タイム
		TEXTURE_RANKING,				// タイム
		TEXTURE_WIND,
		TEXTURE_HANABIRA,
		TEXTURE_SNOW,
		TEXTURE_PAUSE_RESTART,		// 初めから
		TEXTURE_PAUSE_TITLE,		// タイトルへ
		TEXTURE_PAUSE_CLOSE,		// 閉じる
		TEXTURE_PAUSE,				// ポーズ
		TEXTURE_TREE0,				// ポーズ
		TEXTURE_TREE1,				// ポーズ
		TEXTURE_TREE2,				// ポーズ
		TEXTURE_TREE3,				// ポーズ
		TEXTURE_BG0,				// ポーズ
		TEXTURE_BG1,				// ポーズ
		TEXTURE_BG2,				// ポーズ
		TEXTURE_BG3,				// ポーズ
		TEXTURE_TUTORIAL_KEY,		// 操作説明
		TEXTURE_TUTORIAL_TUTORIAL,	// ルール説明
		TEXTURE_SCORE_TEXT,			//	スコア
		TEXTURE_MAX,
		TEXTURE_NONE,				// 使用しない
	};

	static const char* s_FileName[];	// ファイルパス

public:
	CTexture();		// デフォルトコンストラクタ
	~CTexture();	// デストラクタ

public: /* メンバ関数 */
	void LoadAll();										// 全ての読み込み
	void Load(TEXTURE inTexture);						// 指定の読み込み
	void ReleaseAll();									// 全ての破棄
	void Release(TEXTURE inTexture);					// 指定の破棄
	LPDIRECT3DTEXTURE9 GetTexture(TEXTURE inTexture);	// 情報の取得

private: /* メンバ変数 */
	LPDIRECT3DTEXTURE9 s_pTexture[TEXTURE_MAX];	// テクスチャの情報
};

#endif // !_TEXTURE_H_
